.class synthetic Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$android$app$sbrowser$media$history$model$MHDatabaseController$DeleteType:[I

.field static final synthetic $SwitchMap$com$sec$android$app$sbrowser$media$history$model$MHDatabaseController$QueryType:[I

.field static final synthetic $SwitchMap$com$sec$android$app$sbrowser$media$history$model$MHDatabaseController$UpdateType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;->values()[Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$2;->$SwitchMap$com$sec$android$app$sbrowser$media$history$model$MHDatabaseController$QueryType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;->VIDEO_URL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$2;->$SwitchMap$com$sec$android$app$sbrowser$media$history$model$MHDatabaseController$QueryType:[I

    sget-object v3, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;->PAGE_URL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$2;->$SwitchMap$com$sec$android$app$sbrowser$media$history$model$MHDatabaseController$QueryType:[I

    sget-object v4, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;->SIZE:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$2;->$SwitchMap$com$sec$android$app$sbrowser$media$history$model$MHDatabaseController$QueryType:[I

    sget-object v4, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;->MODEL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;->values()[Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$2;->$SwitchMap$com$sec$android$app$sbrowser$media$history$model$MHDatabaseController$UpdateType:[I

    :try_start_4
    sget-object v4, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;->ALL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$2;->$SwitchMap$com$sec$android$app$sbrowser$media$history$model$MHDatabaseController$UpdateType:[I

    sget-object v4, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;->THUMBNAIL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$2;->$SwitchMap$com$sec$android$app$sbrowser$media$history$model$MHDatabaseController$UpdateType:[I

    sget-object v4, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;->TITLE:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;->values()[Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$2;->$SwitchMap$com$sec$android$app$sbrowser$media$history$model$MHDatabaseController$DeleteType:[I

    :try_start_7
    sget-object v4, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;->ALL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$2;->$SwitchMap$com$sec$android$app$sbrowser$media$history$model$MHDatabaseController$DeleteType:[I

    sget-object v3, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;->LIMIT_SIZE:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$2;->$SwitchMap$com$sec$android$app$sbrowser$media$history$model$MHDatabaseController$DeleteType:[I

    sget-object v1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;->INDEX:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method
