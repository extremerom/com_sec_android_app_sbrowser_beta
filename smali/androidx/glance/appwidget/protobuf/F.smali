.class public Landroidx/glance/appwidget/protobuf/F;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field public a:Z


# direct methods
.method public static a()Landroidx/glance/appwidget/protobuf/F;
    .locals 2

    new-instance v0, Landroidx/glance/appwidget/protobuf/F;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()Landroidx/glance/appwidget/protobuf/E;
    .locals 2

    new-instance v0, Landroidx/glance/appwidget/protobuf/E;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c()Landroidx/glance/appwidget/protobuf/F;
    .locals 2

    new-instance v0, Landroidx/glance/appwidget/protobuf/F;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static d()Landroidx/glance/appwidget/protobuf/F;
    .locals 2

    new-instance v0, Landroidx/glance/appwidget/protobuf/F;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static e()Landroidx/glance/appwidget/protobuf/F;
    .locals 2

    new-instance v0, Landroidx/glance/appwidget/protobuf/F;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
