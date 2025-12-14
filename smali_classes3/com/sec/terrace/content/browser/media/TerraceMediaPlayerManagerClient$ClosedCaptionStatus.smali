.class public final enum Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClosedCaptionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

.field public static final enum DISABLED:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

.field public static final enum INVISIBLE:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

.field public static final enum VISIBLE:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;


# direct methods
.method private static synthetic $values()[Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;
    .locals 3

    sget-object v0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;->DISABLED:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    sget-object v1, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;->VISIBLE:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    sget-object v2, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;->INVISIBLE:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    filled-new-array {v0, v1, v2}, [Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;->DISABLED:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    new-instance v0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    const-string v1, "VISIBLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;->VISIBLE:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    new-instance v0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    const-string v1, "INVISIBLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;->INVISIBLE:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    invoke-static {}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;->$values()[Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;->$VALUES:[Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;
    .locals 1

    const-class v0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    return-object p0
.end method

.method public static values()[Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;
    .locals 1

    sget-object v0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;->$VALUES:[Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    invoke-virtual {v0}, [Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    return-object v0
.end method
