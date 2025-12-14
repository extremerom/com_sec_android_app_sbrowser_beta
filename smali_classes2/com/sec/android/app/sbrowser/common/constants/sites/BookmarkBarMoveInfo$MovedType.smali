.class public final enum Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MovedType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;

.field public static final enum MOVED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;

.field public static final enum MOVED_TO_FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;

.field public static final enum MOVED_TO_MORE_BTN:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;->MOVED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;->MOVED_TO_MORE_BTN:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;->MOVED_TO_FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;

    const-string v1, "MOVED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;->MOVED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;

    const-string v1, "MOVED_TO_MORE_BTN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;->MOVED_TO_MORE_BTN:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;

    const-string v1, "MOVED_TO_FOLDER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;->MOVED_TO_FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;->$values()[Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;

    return-object v0
.end method
