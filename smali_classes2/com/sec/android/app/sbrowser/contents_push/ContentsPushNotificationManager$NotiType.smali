.class final enum Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotiType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;

.field public static final enum BIG_PICTURE:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;

.field public static final enum BIG_TEXT:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;->BIG_TEXT:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;->BIG_PICTURE:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;

    filled-new-array {v0, v1}, [Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;

    const-string v1, "BIG_TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;->BIG_TEXT:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;

    new-instance v0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;

    const-string v1, "BIG_PICTURE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;->BIG_PICTURE:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;->$values()[Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;->$VALUES:[Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static lookup(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;->BIG_TEXT:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;->valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;->BIG_TEXT:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;->$VALUES:[Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;

    return-object v0
.end method
