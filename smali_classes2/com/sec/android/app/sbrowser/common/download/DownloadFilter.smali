.class public Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FILTER_LIST:[I

.field private static sMimeTypeToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->FILTER_LIST:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/ogg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/sdp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/xhtml+xml"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/vnd.samsung.widget"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/x-hwp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/vnd.hancom.hwpx"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/haansofthwt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/memo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/pdf"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/vnd.ms-powerpoint"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v3, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v3, "application/vnd.ms-powerpoint.presentation.macroEnabled.12"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.template"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/vnd.google-apps.presentation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/rtf"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/msword"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/vnd.ms-word.document.macroEnabled.12"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/vnd.google-apps.document"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/hancomhwdt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "text/comma-separated-values"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/vnd.ms-excel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v3, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/vnd.ms-excel.sheet.macroEnabled.12"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/vnd.google-apps.spreadsheet"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/sdoc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/hshow"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/vnd.ms-excel.sheet.binary.macroenabled.12"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/vnd.ms-excel.template.macroenabled.12"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/haansoftcell"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/hancomcell"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/hcell"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/vnd.hancom.hcell"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/haansofthcdt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    const-string v2, "application/vnd.fujixerox.docuworks"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f140470
        0x7f140473
        0x7f140475
        0x7f140471
        0x7f140472
        0x7f140474
    .end array-data
.end method

.method public static fromMimeType(Ljava/lang/String;)I
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    sget-object v2, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->sMimeTypeToTypeMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    const-string p0, "video"

    const/4 v2, 0x0

    aget-object v4, v0, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v3

    :cond_3
    const-string p0, "audio"

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    const-string p0, "image"

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const-string p0, "text"

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x4

    return p0

    :cond_6
    return v1
.end method

.method public static getFilterTitles(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->FILTER_LIST:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget v2, v2, v1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static isApplicationPackage(ILjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    const-string p0, "application/vnd.android.package-archive"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
