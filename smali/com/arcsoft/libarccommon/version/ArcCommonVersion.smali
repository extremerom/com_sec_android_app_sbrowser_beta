.class public Lcom/arcsoft/libarccommon/version/ArcCommonVersion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final VERSION:Ljava/lang/String; = "ArcCommonVersion_1.0.0.12"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "ArcCommonVersion_1.0.0.12"

    return-object v0
.end method
