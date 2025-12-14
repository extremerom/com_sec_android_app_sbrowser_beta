.class Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field private mHost:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "host"
    .end annotation
.end field

.field private mPaths:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "path"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson$Path;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson$Data;->mHost:Ljava/lang/String;

    return-object p0
.end method

.method public getPaths()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson$Path;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson$Data;->mPaths:Ljava/util/List;

    return-object p0
.end method
