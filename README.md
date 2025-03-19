# gentoo-config

Personal config files for Gentoo/Ragnarok. This is built on top of
[Ragnarok](https://github.com/RagnarokOS)'s src repo, and includes stuff
that aren't part of its base system.

## Testing

**Before testing, make sure to read all files and understand what they do.**

* Install Gentoo following the [handbook](https://wiki.gentoo.org/wiki/Special:MyLanguage/Handbook:AMD64)
* Choose the regular OpenRC stage 3 tarball
* After extraction, copy all files in etc/portage to the chroot
* Comment out all LLVM/Clang packages in package.env (don't remove them)

After the emerge @world step, install the LLVM/Clang toolchain:

    emerge --ask llvm-core/clang llvm-core/llvm llvm-runtimes/compiler-rt llvm-runtimes/libunwind llvm-core/lld

Brace yourself. Afterwards, you may uncomment all LLVM/Clang lines in etc/package.env
and re-emerge the toolchain with Clang. This step is optional, but recommended.
If you choose to rebuild Clang with Clang, add the `llvm-runtimes/compiler-rt-sanitizers`
package when doing `emerge`.

Proceed with the rest of the handbook. If you wish to build the kernel with
LLVM/Clang, use the `make CC=clang LLVM=1 nconfig` command to configure it.
Recommended: add the Kernel Self Protection Project's [recommended settings](https://kspp.github.io/Recommended_Settings.html)
to your custom kernel.

