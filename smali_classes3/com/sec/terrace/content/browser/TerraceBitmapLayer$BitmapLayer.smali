.class public final enum Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/content/browser/TerraceBitmapLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BitmapLayer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

.field public static final enum BITMAP_LAYER_BOTH:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

.field public static final enum BITMAP_LAYER_BOTTOMBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

.field public static final enum BITMAP_LAYER_MAX:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

.field public static final enum BITMAP_LAYER_NONE:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

.field public static final enum BITMAP_LAYER_TOPBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;


# instance fields
.field private mEnumValue:I


# direct methods
.method private static synthetic $values()[Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;
    .locals 5

    sget-object v0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_NONE:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    sget-object v1, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_TOPBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    sget-object v2, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_BOTTOMBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    sget-object v3, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_BOTH:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    sget-object v4, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_MAX:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    const/4 v1, -0x1

    const-string v2, "BITMAP_LAYER_NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_NONE:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    new-instance v0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    const-string v1, "BITMAP_LAYER_TOPBAR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_TOPBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    new-instance v0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    const-string v1, "BITMAP_LAYER_BOTTOMBAR"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_BOTTOMBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    new-instance v0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    const-string v1, "BITMAP_LAYER_BOTH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_BOTH:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    new-instance v0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    const-string v1, "BITMAP_LAYER_MAX"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_MAX:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    invoke-static {}, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->$values()[Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->$VALUES:[Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

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

    iput p3, p0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->mEnumValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;
    .locals 1

    const-class v0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    return-object p0
.end method

.method public static values()[Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;
    .locals 1

    sget-object v0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->$VALUES:[Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    invoke-virtual {v0}, [Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    return-object v0
.end method


# virtual methods
.method public getEnumValue()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->mEnumValue:I

    return p0
.end method
