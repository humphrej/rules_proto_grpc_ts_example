

mkdir -p $PWD/ts_out $PWD/js_out

PLUGIN=bazel-out/darwin-opt-exec-2B5CBBC6/bin/external/com_github_grpc_grpc_web/javascript/net/grpc/web/protoc-gen-grpc-web
PROTOC=bazel-out/host/bin/external/com_google_protobuf/protoc 

${PROTOC} \
  --descriptor_set_in=bazel-out/darwin-fastbuild/bin/external/com_google_protobuf/empty_proto-descriptor-set.proto.bin:bazel-out/darwin-fastbuild/bin/proto/sysinternals_proto-descriptor-set.proto.bin \
  --plugin=protoc-gen-ts_plugin=${PLUGIN} \
  --ts_plugin_out=import_style=typescript,mode=grpcweb:$PWD/ts_out \
  --js_out=import_style=commonjs:$PWD/js_out \
  proto/sysinternals.proto 



