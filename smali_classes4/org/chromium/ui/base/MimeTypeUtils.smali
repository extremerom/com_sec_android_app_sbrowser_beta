.class public Lorg/chromium/ui/base/MimeTypeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/base/MimeTypeUtils$Type;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final CHROME_MIMETYPE_LINK:Ljava/lang/String; = "chrome/link"

.field public static final CHROME_MIMETYPE_TAB:Ljava/lang/String; = "chrome/tab"

.field public static final CHROME_MIMETYPE_TAB_GROUP:Ljava/lang/String; = "chrome/tab-group"

.field public static final CHROME_MIMETYPE_TEXT:Ljava/lang/String; = "chrome/text"

.field public static final NUM_MIME_TYPE_ENTRIES:I = 0x6

.field public static final PDF_MIME_TYPE:Ljava/lang/String; = "application/pdf"


# direct methods
.method public static clipDescriptionHasBrowserContent(Landroid/content/ClipDescription;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "chrome/tab"

    invoke-virtual {p0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "chrome/tab-group"

    invoke-virtual {p0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
