% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/branch.r
\docType{methods}
\name{branches}
\alias{branches}
\alias{branches,git_repository-method}
\alias{branches,missing-method}
\title{Branches}
\usage{
branches(repo, flags = c("all", "local", "remote"))

\S4method{branches}{missing}(flags)

\S4method{branches}{git_repository}(repo, flags = c("all", "local", "remote"))
}
\arguments{
\item{repo}{The repository \code{object}
\code{\linkS4class{git_repository}}. If the \code{repo} argument
is missing, the repository is searched for with
\code{\link{discover_repository}} in the current working
directory.}

\item{flags}{Filtering flags for the branch listing. Valid values
are 'all', 'local' or 'remote'}
}
\value{
list of branches in repository
}
\description{
List branches in repository
}
\examples{
\dontrun{
## Initialize repositories
path_bare <- tempfile(pattern="git2r-")
path_repo <- tempfile(pattern="git2r-")
dir.create(path_bare)
dir.create(path_repo)
repo_bare <- init(path_bare, bare = TRUE)
repo <- clone(path_bare, path_repo)

## Config first user and commit a file
config(repo, user.name="Alice", user.email="alice@example.org")

## Write to a file and commit
writeLines("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do",
           file.path(path_repo, "example.txt"))
add(repo, "example.txt")
commit(repo, "First commit message")

## Push commits from repository to bare repository
## Adds an upstream tracking branch to branch 'master'
push(repo, "origin", "refs/heads/master")

## List branches
branches(repo)
}
}
\keyword{methods}

