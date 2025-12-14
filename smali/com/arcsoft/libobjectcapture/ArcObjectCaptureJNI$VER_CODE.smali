.class final enum Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VER_CODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

.field public static final enum UNSUPPORT:Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

.field public static final enum V101:Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

.field public static final enum V102:Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

.field public static final enum V103:Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    const-string v1, "UNSUPPORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;->UNSUPPORT:Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    new-instance v1, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    const-string v2, "V101"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;->V101:Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    new-instance v2, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    const-string v3, "V102"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;->V102:Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    new-instance v3, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    const-string v4, "V103"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;->V103:Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    filled-new-array {v0, v1, v2, v3}, [Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    move-result-object v0

    sput-object v0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;->$VALUES:[Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;
    .locals 1

    const-class v0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    return-object p0
.end method

.method public static values()[Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;
    .locals 1

    sget-object v0, Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;->$VALUES:[Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    invoke-virtual {v0}, [Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/arcsoft/libobjectcapture/ArcObjectCaptureJNI$VER_CODE;

    return-object v0
.end method
