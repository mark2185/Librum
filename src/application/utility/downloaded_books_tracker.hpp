#pragma once
#include "i_downloaded_books_tracker.hpp"

namespace application::utility
{

class DownloadedBooksTracker : public IDownloadedBooksTracker
{
public:
    void setLibraryOwner(const QString& libraryOwnerEmail) override;
    void clearLibraryOwner() override;
    QDir getUserLibraryDir() const override;

    std::vector<domain::entities::Book> getTrackedBooks() override;
    std::optional<domain::entities::Book> getTrackedBook(
        const QUuid& uuid) override;
    bool trackBook(const domain::entities::Book& book) override;
    bool untrackBook(const QUuid& uuid) override;
    bool updateTrackedBook(const domain::entities::Book& book) override;

private:
    void ensureUserLibraryExists();
    QString getUserLibraryName(QString email) const;

    QString m_libraryOwnerEmail;
    QDir m_libraryFolder;
    const QString m_fileExtension = ".libmeta";
};

}  // namespace application::utility