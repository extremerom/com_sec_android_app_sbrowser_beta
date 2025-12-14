.class Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson$Path;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Path"
.end annotation


# instance fields
.field private mApplyPCS:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "applyPCS"
    .end annotation
.end field

.field private mCss:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "css"
    .end annotation
.end field

.field private mCssForHCM:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cssForHCM"
    .end annotation
.end field

.field private mPattern:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pattern"
    .end annotation
.end field


# virtual methods
.method public getApplyPCS()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson$Path;->mApplyPCS:Z

    return p0
.end method

.method public getCss()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson$Path;->mCss:Ljava/lang/String;

    return-object p0
.end method

.method public getCssForHCM()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson$Path;->mCssForHCM:Ljava/lang/String;

    return-object p0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomJson$Path;->mPattern:Ljava/lang/String;

    return-object p0
.end method
