.class public final enum Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

.field public static final enum EXCHANGE:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

.field public static final enum GET:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

.field public static final enum NOTI:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

.field public static final enum RESPONSE:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

.field public static final enum SET:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;


# instance fields
.field private final mValue:I


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;
    .locals 5

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->GET:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->SET:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    sget-object v2, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->EXCHANGE:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    sget-object v3, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->RESPONSE:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    sget-object v4, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->NOTI:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->GET:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    const-string v1, "SET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->SET:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    const-string v1, "EXCHANGE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->EXCHANGE:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    const-string v1, "RESPONSE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->RESPONSE:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    const-string v1, "NOTI"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->NOTI:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->$values()[Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->$VALUES:[Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->$VALUES:[Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->mValue:I

    return p0
.end method
