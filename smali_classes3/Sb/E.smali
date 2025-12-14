.class public final enum LSb/E;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LSb/E;

.field public static final enum OBJECT_PARAMETER_GENERIC:LSb/E;

.field public static final enum OBJECT_PARAMETER_NON_GENERIC:LSb/E;

.field public static final enum ONE_COLLECTION_PARAMETER:LSb/E;


# instance fields
.field private final isObjectReplacedWithTypeParameter:Z

.field private final valueParametersSignature:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LSb/E;

    const-string v1, "Ljava/util/Collection<+Ljava/lang/Object;>;"

    const-string v2, "ONE_COLLECTION_PARAMETER"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, LSb/E;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, LSb/E;->ONE_COLLECTION_PARAMETER:LSb/E;

    new-instance v1, LSb/E;

    const-string v2, "OBJECT_PARAMETER_NON_GENERIC"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v3}, LSb/E;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, LSb/E;->OBJECT_PARAMETER_NON_GENERIC:LSb/E;

    new-instance v2, LSb/E;

    const-string v4, "Ljava/lang/Object;"

    const-string v5, "OBJECT_PARAMETER_GENERIC"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v4, v3}, LSb/E;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v2, LSb/E;->OBJECT_PARAMETER_GENERIC:LSb/E;

    filled-new-array {v0, v1, v2}, [LSb/E;

    move-result-object v0

    sput-object v0, LSb/E;->$VALUES:[LSb/E;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LSb/E;->$ENTRIES:Llb/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, LSb/E;->valueParametersSignature:Ljava/lang/String;

    iput-boolean p4, p0, LSb/E;->isObjectReplacedWithTypeParameter:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LSb/E;
    .locals 1

    const-class v0, LSb/E;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LSb/E;

    return-object p0
.end method

.method public static values()[LSb/E;
    .locals 1

    sget-object v0, LSb/E;->$VALUES:[LSb/E;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LSb/E;

    return-object v0
.end method
