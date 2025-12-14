.class Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson$Path;,
        Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson$Data;
    }
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson$Data;",
            ">;"
        }
    .end annotation
.end field

.field private mScript:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "script"
    .end annotation
.end field

.field private mScriptForPCS:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scriptForPCS"
    .end annotation
.end field

.field private mScriptToRemove:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scriptToRemove"
    .end annotation
.end field

.field private mVersion:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# virtual methods
.method public getList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson$Data;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson;->mData:Ljava/util/List;

    return-object p0
.end method

.method public getScript()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson;->mScript:Ljava/lang/String;

    return-object p0
.end method

.method public getScriptForPCS()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson;->mScriptForPCS:Ljava/lang/String;

    return-object p0
.end method

.method public getScriptToRemove()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson;->mScriptToRemove:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson;->mVersion:I

    return p0
.end method
