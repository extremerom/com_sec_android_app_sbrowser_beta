.class public Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final INVALID_ENTRY:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;


# instance fields
.field public canDownloadWhileMetered:Z

.field public final downloadGuid:Ljava/lang/String;

.field public final fileName:Ljava/lang/String;

.field public final isAutoResumable:Z

.field public final isComplete:Z

.field public final itemType:I

.field public final notificationId:I

.field public final offTheRecord:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v9, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    const/4 v6, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;-><init>(IIZLjava/lang/String;Ljava/lang/String;IZZ)V

    sput-object v9, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->INVALID_ENTRY:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    return-void
.end method

.method public constructor <init>(IIZLjava/lang/String;Ljava/lang/String;IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->notificationId:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->offTheRecord:I

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->canDownloadWhileMetered:Z

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->downloadGuid:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->fileName:Ljava/lang/String;

    iput p6, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->itemType:I

    iput-boolean p7, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->isAutoResumable:Z

    iput-boolean p8, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->isComplete:Z

    return-void
.end method

.method public static isValidGUID(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static parseFromString(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;
    .locals 4

    const-string v0, "Exception while parsing pending download:"

    const-string v1, "DownloadEntry"

    :try_start_0
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->INVALID_ENTRY:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->parseFromVersion6(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->parseFromVersion5(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->parseFromVersion4(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->parseFromVersion3(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    move-result-object p0

    return-object p0

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->INVALID_ENTRY:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    return-object p0

    :catch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->INVALID_ENTRY:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    return-object p0
.end method

.method public static parseFromVersion3(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;
    .locals 20

    const-string v0, ","

    const/4 v1, 0x7

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-eq v2, v1, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->INVALID_ENTRY:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v4, v0, v3

    const/4 v5, 0x2

    aget-object v6, v0, v5

    const/4 v7, 0x3

    aget-object v8, v0, v7

    const/4 v9, 0x4

    aget-object v9, v0, v9

    const/4 v10, 0x5

    aget-object v15, v0, v10

    const/4 v10, 0x6

    aget-object v16, v0, v10

    const-string v0, "0"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v13, v1

    goto :goto_0

    :cond_1
    move v13, v5

    :goto_0
    const-string v0, "1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v7, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->INVALID_ENTRY:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    return-object v0

    :cond_2
    invoke-static {v15}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->isValidGUID(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->INVALID_ENTRY:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    return-object v0

    :cond_3
    if-eq v1, v3, :cond_4

    if-eq v1, v5, :cond_4

    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->INVALID_ENTRY:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    return-object v0

    :cond_4
    new-instance v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v11, v0

    move/from16 v17, v1

    invoke-direct/range {v11 .. v19}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;-><init>(IIZLjava/lang/String;Ljava/lang/String;IZZ)V

    return-object v0

    :catch_0
    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->INVALID_ENTRY:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    return-object v0
.end method

.method public static parseFromVersion4(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;
    .locals 21

    const-string v0, ","

    const/16 v1, 0x8

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-eq v2, v1, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->INVALID_ENTRY:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v4, v0, v3

    const/4 v5, 0x2

    aget-object v6, v0, v5

    const/4 v7, 0x3

    aget-object v7, v0, v7

    const/4 v8, 0x4

    aget-object v9, v0, v8

    const/4 v10, 0x5

    aget-object v10, v0, v10

    const/4 v11, 0x6

    aget-object v16, v0, v11

    const/4 v11, 0x7

    aget-object v17, v0, v11

    const-string v0, "0"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v14, v1

    goto :goto_0

    :cond_1
    move v14, v5

    :goto_0
    const-string v0, "1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v8, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->INVALID_ENTRY:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    return-object v0

    :cond_2
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->isValidGUID(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->INVALID_ENTRY:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    return-object v0

    :cond_3
    if-eq v1, v3, :cond_4

    if-eq v1, v5, :cond_4

    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->INVALID_ENTRY:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    return-object v0

    :cond_4
    new-instance v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    const/16 v20, 0x0

    move-object v12, v0

    move/from16 v18, v1

    invoke-direct/range {v12 .. v20}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;-><init>(IIZLjava/lang/String;Ljava/lang/String;IZZ)V

    return-object v0

    :catch_0
    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->INVALID_ENTRY:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    return-object v0
.end method

.method public static parseFromVersion5(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;
    .locals 21

    const-string v0, ","

    const/16 v1, 0x9

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-eq v2, v1, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->INVALID_ENTRY:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v4, v0, v3

    const/4 v5, 0x2

    aget-object v6, v0, v5

    const/4 v7, 0x3

    aget-object v7, v0, v7

    const/4 v8, 0x4

    aget-object v8, v0, v8

    const/4 v9, 0x5

    aget-object v10, v0, v9

    const/4 v11, 0x6

    aget-object v16, v0, v11

    const/4 v11, 0x7

    aget-object v17, v0, v11

    const/16 v11, 0x8

    aget-object v0, v0, v11

    const-string v11, "0"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v14, v1

    goto :goto_0

    :cond_1
    move v14, v5

    :goto_0
    const-string v1, "1"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v9, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->INVALID_ENTRY:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    return-object v0

    :cond_2
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->isValidGUID(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->INVALID_ENTRY:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    return-object v0

    :cond_3
    if-eq v1, v3, :cond_4

    if-eq v1, v5, :cond_4

    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->INVALID_ENTRY:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    return-object v0

    :cond_4
    new-instance v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    move-object v12, v0

    move/from16 v18, v1

    invoke-direct/range {v12 .. v20}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;-><init>(IIZLjava/lang/String;Ljava/lang/String;IZZ)V

    return-object v0

    :catch_0
    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->INVALID_ENTRY:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    return-object v0
.end method

.method public static parseFromVersion6(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;
    .locals 19

    const-string v0, ","

    const/16 v1, 0x9

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-eq v2, v1, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->INVALID_ENTRY:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v3, v0, v2

    const/4 v4, 0x2

    aget-object v5, v0, v4

    const/4 v6, 0x3

    aget-object v6, v0, v6

    const/4 v7, 0x4

    aget-object v7, v0, v7

    const/4 v8, 0x5

    aget-object v8, v0, v8

    const/4 v9, 0x6

    aget-object v14, v0, v9

    const/4 v10, 0x7

    aget-object v15, v0, v10

    const/16 v10, 0x8

    aget-object v0, v0, v10

    const-string v10, "1"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v9, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->INVALID_ENTRY:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    return-object v0

    :cond_1
    invoke-static {v14}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->isValidGUID(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->INVALID_ENTRY:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    return-object v0

    :cond_2
    if-eq v1, v2, :cond_3

    if-eq v1, v4, :cond_3

    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->INVALID_ENTRY:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    return-object v0

    :cond_3
    new-instance v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    move-object v10, v0

    move/from16 v16, v1

    invoke-direct/range {v10 .. v18}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;-><init>(IIZLjava/lang/String;Ljava/lang/String;IZZ)V

    return-object v0

    :catch_0
    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->INVALID_ENTRY:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    return-object v0
.end method


# virtual methods
.method public buildDownloadItem()Lcom/sec/terrace/browser/download/TerraceDownloadItem;
    .locals 2

    new-instance v0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    invoke-direct {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->downloadGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setDownloadGuid(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setFileName(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v0

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->offTheRecord:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setIsOffTheRecord(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->build()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p0

    new-instance v0, Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;-><init>(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->downloadGuid:Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->downloadGuid:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->fileName:Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->fileName:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->notificationId:I

    iget v2, p1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->notificationId:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->itemType:I

    iget v2, p1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->itemType:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->offTheRecord:I

    iget v2, p1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->offTheRecord:I

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->canDownloadWhileMetered:Z

    iget-boolean v2, p1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->canDownloadWhileMetered:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->isAutoResumable:Z

    iget-boolean v2, p1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->isAutoResumable:Z

    if-ne v0, v2, :cond_1

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->isComplete:Z

    iget-boolean p1, p1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->isComplete:Z

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getSharedPreferenceString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "6,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->notificationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->itemType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->offTheRecord:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->canDownloadWhileMetered:Z

    const-string v3, "0"

    const-string v4, "1"

    if-eqz v2, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->isAutoResumable:Z

    if-eqz v2, :cond_1

    move-object v2, v4

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->downloadGuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->isComplete:Z

    if-eqz p0, :cond_2

    move-object v3, v4

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x47b

    iget v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->offTheRecord:I

    add-int/2addr v0, v1

    const/16 v1, 0x25

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->canDownloadWhileMetered:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->notificationId:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->itemType:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->downloadGuid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->fileName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->isAutoResumable:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->isComplete:Z

    add-int/2addr v0, p0

    return v0
.end method

.method public isOfflinePage()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->itemType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
