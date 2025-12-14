.class public final enum LMc/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LMc/b;

.field public static final Companion:LMc/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEFAULT:LMc/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum HASH_MAP:LMc/b;

.field public static final enum NO_CACHE:LMc/b;

.field public static final enum SPARSE_ARRAY:LMc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LMc/b;

    const-string v1, "SPARSE_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LMc/b;->SPARSE_ARRAY:LMc/b;

    new-instance v1, LMc/b;

    const-string v2, "HASH_MAP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LMc/b;->HASH_MAP:LMc/b;

    new-instance v2, LMc/b;

    const-string v3, "NO_CACHE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LMc/b;->NO_CACHE:LMc/b;

    filled-new-array {v0, v1, v2}, [LMc/b;

    move-result-object v0

    sput-object v0, LMc/b;->$VALUES:[LMc/b;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LMc/b;->$ENTRIES:Llb/a;

    new-instance v0, LMc/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LMc/b;->Companion:LMc/a;

    sput-object v1, LMc/b;->DEFAULT:LMc/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LMc/b;
    .locals 1

    const-class v0, LMc/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LMc/b;

    return-object p0
.end method

.method public static values()[LMc/b;
    .locals 1

    sget-object v0, LMc/b;->$VALUES:[LMc/b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LMc/b;

    return-object v0
.end method
