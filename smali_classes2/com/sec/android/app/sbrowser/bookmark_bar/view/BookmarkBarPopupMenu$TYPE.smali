.class public final enum Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;

.field public static final enum BAR:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;

.field public static final enum FOLDER:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;

.field public static final enum URL:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;->BAR:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;->FOLDER:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;

    sget-object v2, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;->URL:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;

    const-string v1, "BAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;->BAR:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;

    const-string v1, "FOLDER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;->FOLDER:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;

    const-string v1, "URL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;->URL:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;->$values()[Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;->$VALUES:[Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;->$VALUES:[Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;

    return-object v0
.end method
