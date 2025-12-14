.class public final enum Lfd/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lfd/h;

.field public static final enum LIST:Lfd/h;

.field public static final enum MAP:Lfd/h;

.field public static final enum OBJ:Lfd/h;

.field public static final enum POLY_OBJ:Lfd/h;


# instance fields
.field public final begin:C
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final end:C
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lfd/h;

    const-string v1, "OBJ"

    const/4 v2, 0x0

    const/16 v3, 0x7b

    const/16 v4, 0x7d

    invoke-direct {v0, v1, v2, v3, v4}, Lfd/h;-><init>(Ljava/lang/String;ICC)V

    sput-object v0, Lfd/h;->OBJ:Lfd/h;

    new-instance v1, Lfd/h;

    const-string v2, "LIST"

    const/4 v5, 0x1

    const/16 v6, 0x5b

    const/16 v7, 0x5d

    invoke-direct {v1, v2, v5, v6, v7}, Lfd/h;-><init>(Ljava/lang/String;ICC)V

    sput-object v1, Lfd/h;->LIST:Lfd/h;

    new-instance v2, Lfd/h;

    const-string v5, "MAP"

    const/4 v8, 0x2

    invoke-direct {v2, v5, v8, v3, v4}, Lfd/h;-><init>(Ljava/lang/String;ICC)V

    sput-object v2, Lfd/h;->MAP:Lfd/h;

    new-instance v3, Lfd/h;

    const-string v4, "POLY_OBJ"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v6, v7}, Lfd/h;-><init>(Ljava/lang/String;ICC)V

    sput-object v3, Lfd/h;->POLY_OBJ:Lfd/h;

    filled-new-array {v0, v1, v2, v3}, [Lfd/h;

    move-result-object v0

    sput-object v0, Lfd/h;->$VALUES:[Lfd/h;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lfd/h;->$ENTRIES:Llb/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ICC)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-char p3, p0, Lfd/h;->begin:C

    iput-char p4, p0, Lfd/h;->end:C

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfd/h;
    .locals 1

    const-class v0, Lfd/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfd/h;

    return-object p0
.end method

.method public static values()[Lfd/h;
    .locals 1

    sget-object v0, Lfd/h;->$VALUES:[Lfd/h;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfd/h;

    return-object v0
.end method
