.class Lorg/chromium/url/GURL$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/url/GURL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field private static sEmptyGURL:Lorg/chromium/url/GURL;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/chromium/url/GURL;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/chromium/url/GURL;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/chromium/url/GURL$Holder;->sEmptyGURL:Lorg/chromium/url/GURL;

    return-void
.end method

.method public static bridge synthetic a()Lorg/chromium/url/GURL;
    .locals 1

    sget-object v0, Lorg/chromium/url/GURL$Holder;->sEmptyGURL:Lorg/chromium/url/GURL;

    return-object v0
.end method
