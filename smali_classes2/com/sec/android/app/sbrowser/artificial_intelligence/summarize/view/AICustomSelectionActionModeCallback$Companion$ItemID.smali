.class final enum Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0082\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;",
        "",
        "id",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "SELECT_ALL",
        "WEB_SEARCH",
        "SHARE",
        "value",
        "getValue",
        "()I",
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

.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;

.field public static final enum SELECT_ALL:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;

.field public static final enum SHARE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;

.field public static final enum WEB_SEARCH:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;


# instance fields
.field private final id:I


# direct methods
.method private static final synthetic $values()[Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;->SELECT_ALL:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;

    sget-object v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;->WEB_SEARCH:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;

    sget-object v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;->SHARE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;

    const v1, 0x102001f

    const-string v2, "SELECT_ALL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;->SELECT_ALL:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;

    const/16 v1, 0x38f

    const-string v2, "WEB_SEARCH"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;->WEB_SEARCH:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;

    const v1, 0x1020035

    const-string v2, "SHARE"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;->SHARE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;->$values()[Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;->$VALUES:[Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;->$ENTRIES:Llb/a;

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

    iput p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;->$VALUES:[Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;->id:I

    return p0
.end method
