# Autogenerated wrapper script for polymake_jll for aarch64-apple-darwin
export libpolymake, libpolymake_apps_rt, polymake, polymake_config

using LLVMOpenMP_jll
using GMP_jll
using MPFR_jll
using FLINT_jll
using PPL_jll
using Perl_jll
using SCIP_jll
using bliss_jll
using boost_jll
using cddlib_jll
using lrslib_jll
using normaliz_jll
JLLWrappers.@generate_wrapper_header("polymake")
JLLWrappers.@declare_library_product(libpolymake, "@rpath/libpolymake.4.10.dylib")
JLLWrappers.@declare_library_product(libpolymake_apps_rt, "@rpath/libpolymake-apps-rt.4.10.dylib")
JLLWrappers.@declare_executable_product(polymake)
JLLWrappers.@declare_executable_product(polymake_config)
function __init__()
    JLLWrappers.@generate_init_header(LLVMOpenMP_jll, GMP_jll, MPFR_jll, FLINT_jll, PPL_jll, Perl_jll, SCIP_jll, bliss_jll, boost_jll, cddlib_jll, lrslib_jll, normaliz_jll)
    JLLWrappers.@init_library_product(
        libpolymake,
        "lib/libpolymake.4.10.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libpolymake_apps_rt,
        "lib/libpolymake-apps-rt.4.10.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        polymake,
        "bin/polymake",
    )

    JLLWrappers.@init_executable_product(
        polymake_config,
        "bin/polymake-config",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
