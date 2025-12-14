.class public final enum LF1/d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroidx/glance/appwidget/protobuf/A;


# static fields
.field private static final synthetic $VALUES:[LF1/d;

.field public static final enum CENTER_HORIZONTALLY:LF1/d;

.field public static final CENTER_HORIZONTALLY_VALUE:I = 0x2

.field public static final enum END:LF1/d;

.field public static final END_VALUE:I = 0x3

.field public static final enum START:LF1/d;

.field public static final START_VALUE:I = 0x1

.field public static final enum UNRECOGNIZED:LF1/d;

.field public static final enum UNSPECIFIED_HORIZONTAL_ALIGNMENT:LF1/d;

.field public static final UNSPECIFIED_HORIZONTAL_ALIGNMENT_VALUE:I

.field private static final internalValueMap:Landroidx/glance/appwidget/protobuf/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/glance/appwidget/protobuf/B;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LF1/d;

    const-string v1, "UNSPECIFIED_HORIZONTAL_ALIGNMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LF1/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, LF1/d;->UNSPECIFIED_HORIZONTAL_ALIGNMENT:LF1/d;

    new-instance v1, LF1/d;

    const-string v2, "START"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, LF1/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, LF1/d;->START:LF1/d;

    new-instance v2, LF1/d;

    const-string v3, "CENTER_HORIZONTALLY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, LF1/d;-><init>(Ljava/lang/String;II)V

    sput-object v2, LF1/d;->CENTER_HORIZONTALLY:LF1/d;

    new-instance v3, LF1/d;

    const-string v4, "END"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, LF1/d;-><init>(Ljava/lang/String;II)V

    sput-object v3, LF1/d;->END:LF1/d;

    new-instance v4, LF1/d;

    const/4 v5, -0x1

    const-string v6, "UNRECOGNIZED"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, LF1/d;-><init>(Ljava/lang/String;II)V

    sput-object v4, LF1/d;->UNRECOGNIZED:LF1/d;

    filled-new-array {v0, v1, v2, v3, v4}, [LF1/d;

    move-result-object v0

    sput-object v0, LF1/d;->$VALUES:[LF1/d;

    new-instance v0, LF6/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LF1/d;->internalValueMap:Landroidx/glance/appwidget/protobuf/B;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LF1/d;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LF1/d;
    .locals 1

    const-class v0, LF1/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LF1/d;

    return-object p0
.end method

.method public static values()[LF1/d;
    .locals 1

    sget-object v0, LF1/d;->$VALUES:[LF1/d;

    invoke-virtual {v0}, [LF1/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LF1/d;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    sget-object v0, LF1/d;->UNRECOGNIZED:LF1/d;

    if-eq p0, v0, :cond_0

    iget p0, p0, LF1/d;->value:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t get the number of an unknown enum value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
