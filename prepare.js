import { prepare, maps } from "binary2npm";

maps.arch = {
  arm64: "arm64",
  x86_64: "amd64"
}
maps.os.win32 = "windows";

await prepare({
  remote: "github",
  author: "loeffel-io",
  repository: "ls-lint",
  remoteToken: process.env.GITHUB_TOKEN,
  binary: "ls-lint",
  orders: ["binary", "os", "arch"],
});
