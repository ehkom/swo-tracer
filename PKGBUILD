# Maintainer: Ehkom <ehko@ehko.ovh>

pkgname=swo-tracer
pkgver=1.0
pkgrel=1
pkgdesc="simple watcher and parser for ARM SWO trace output"
arch=('any')
url="https://github.com/ehkom/swo-tracer"
license=('custom')
makedepends=('git')
source=("git+https://github.com/ehkom/swo-tracer.git")
md5sums=('SKIP')

_gitrepo=${pkgname%-git}

build() {
  cd "${srcdir}/${_gitrepo}"

  make
}

package(){
  cd "${srcdir}/${_gitrepo}"

  make PREFIX="$pkgdir/usr/bin" install
}
