.class public final enum Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemPosition"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u0000 \u00082\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0008B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "ONLY_FIRST",
        "FIRST",
        "MIDDLE",
        "LAST",
        "Companion",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;

.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum FIRST:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;

.field public static final enum LAST:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;

.field public static final enum MIDDLE:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;

.field public static final enum ONLY_FIRST:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;


# direct methods
.method private static final synthetic $values()[Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;->ONLY_FIRST:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;->FIRST:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;

    sget-object v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;->MIDDLE:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;

    sget-object v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;->LAST:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;

    const-string v1, "ONLY_FIRST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;->ONLY_FIRST:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;

    const-string v1, "FIRST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;->FIRST:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;

    const-string v1, "MIDDLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;->MIDDLE:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;

    const-string v1, "LAST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;->LAST:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;->$values()[Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;->$VALUES:[Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;->$ENTRIES:Llb/a;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition$Companion;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;->$VALUES:[Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;

    return-object v0
.end method
