.class public final enum Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MESSAGES"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;

.field public static final enum DELETED:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;

.field public static final enum HIDE:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;

.field public static final enum INSERTED:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;->INSERTED:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;->DELETED:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;

    sget-object v2, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;->HIDE:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;

    const-string v1, "INSERTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;->INSERTED:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;

    const-string v1, "DELETED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;->DELETED:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;

    const-string v1, "HIDE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;->HIDE:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;->$values()[Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;->$VALUES:[Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;

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

.method public static getMessages(I)Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;->values()[Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;->$VALUES:[Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;

    return-object v0
.end method
