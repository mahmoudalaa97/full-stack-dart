import "package:dart_frog/dart_frog.dart";

Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.delete:
      return Response(body: "DELETE");
    case HttpMethod.get:
      return Response(body: "GET");
    case HttpMethod.head:
      return Response(body: "HEAD");
    case HttpMethod.options:
      return Response(body: "OPTIONS");
    case HttpMethod.patch:
      return Response(body: "PATCH");
    case HttpMethod.post:
      // Access the incoming request.
      final request = context.request;
      // Access the request body form data.
      final formData = await request.formData();

      // Retrieve an uploaded file.
      final photo = formData.files["photo"];

      print("${photo?.contentType.mimeType}");
      if (photo != null) {
        return Response.json(
          body: {"message": "Successfully uploaded ${photo.name}"},
        );
      }

      return Response.json(
        body: {"message": "ignor imege"},
      );

    case HttpMethod.put:
      return Response(body: "PUT");
  }
}
