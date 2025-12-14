.class public final enum Lyc/e0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lyc/e0;

.field public static final enum INVARIANT:Lyc/e0;

.field public static final enum IN_VARIANCE:Lyc/e0;

.field public static final enum OUT_VARIANCE:Lyc/e0;


# instance fields
.field private final allowsInPosition:Z

.field private final allowsOutPosition:Z

.field private final label:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final superpositionFactor:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v7, Lyc/e0;

    const-string v2, ""

    const/4 v4, 0x1

    const-string v1, "INVARIANT"

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lyc/e0;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    sput-object v7, Lyc/e0;->INVARIANT:Lyc/e0;

    new-instance v0, Lyc/e0;

    const-string v10, "in"

    const/4 v12, 0x1

    const-string v9, "IN_VARIANCE"

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, -0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lyc/e0;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    sput-object v0, Lyc/e0;->IN_VARIANCE:Lyc/e0;

    new-instance v1, Lyc/e0;

    const-string v17, "out"

    const/16 v19, 0x0

    const-string v16, "OUT_VARIANCE"

    const/16 v18, 0x2

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lyc/e0;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    sput-object v1, Lyc/e0;->OUT_VARIANCE:Lyc/e0;

    filled-new-array {v7, v0, v1}, [Lyc/e0;

    move-result-object v0

    sput-object v0, Lyc/e0;->$VALUES:[Lyc/e0;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lyc/e0;->$ENTRIES:Llb/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZZI)V
    .locals 0

    invoke-direct {p0, p1, p3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lyc/e0;->label:Ljava/lang/String;

    iput-boolean p4, p0, Lyc/e0;->allowsInPosition:Z

    iput-boolean p5, p0, Lyc/e0;->allowsOutPosition:Z

    iput p6, p0, Lyc/e0;->superpositionFactor:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyc/e0;
    .locals 1

    const-class v0, Lyc/e0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyc/e0;

    return-object p0
.end method

.method public static values()[Lyc/e0;
    .locals 1

    sget-object v0, Lyc/e0;->$VALUES:[Lyc/e0;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyc/e0;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lyc/e0;->allowsOutPosition:Z

    return p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyc/e0;->label:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyc/e0;->label:Ljava/lang/String;

    return-object p0
.end method
