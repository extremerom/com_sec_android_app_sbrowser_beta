.class public final enum Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/content/browser/pip/TerracePipConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaybackState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

.field public static final enum END_OF_VIDEO:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

.field public static final enum NONE:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

.field public static final enum PAUSED:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

.field public static final enum PLAYING:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;


# direct methods
.method private static synthetic $values()[Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;
    .locals 4

    sget-object v0, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;->NONE:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    sget-object v1, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;->PLAYING:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    sget-object v2, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;->PAUSED:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    sget-object v3, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;->END_OF_VIDEO:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;->NONE:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    new-instance v0, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    const-string v1, "PLAYING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;->PLAYING:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    new-instance v0, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    const-string v1, "PAUSED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;->PAUSED:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    new-instance v0, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    const-string v1, "END_OF_VIDEO"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;->END_OF_VIDEO:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    invoke-static {}, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;->$values()[Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;->$VALUES:[Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;
    .locals 1

    const-class v0, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    return-object p0
.end method

.method public static values()[Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;
    .locals 1

    sget-object v0, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;->$VALUES:[Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    invoke-virtual {v0}, [Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    return-object v0
.end method
