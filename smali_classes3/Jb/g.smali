.class public final enum LJb/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LJb/g;

.field public static final enum ANNOTATION_CLASS:LJb/g;

.field public static final enum CLASS:LJb/g;

.field public static final enum ENUM_CLASS:LJb/g;

.field public static final enum ENUM_ENTRY:LJb/g;

.field public static final enum INTERFACE:LJb/g;

.field public static final enum OBJECT:LJb/g;


# instance fields
.field private final codeRepresentation:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, LJb/g;

    const-string v1, "class"

    const-string v2, "CLASS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, LJb/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LJb/g;->CLASS:LJb/g;

    new-instance v1, LJb/g;

    const-string v2, "interface"

    const-string v3, "INTERFACE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, LJb/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, LJb/g;->INTERFACE:LJb/g;

    new-instance v2, LJb/g;

    const-string v3, "enum class"

    const-string v4, "ENUM_CLASS"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, LJb/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, LJb/g;->ENUM_CLASS:LJb/g;

    new-instance v3, LJb/g;

    const/4 v4, 0x0

    const-string v5, "ENUM_ENTRY"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, LJb/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, LJb/g;->ENUM_ENTRY:LJb/g;

    new-instance v4, LJb/g;

    const-string v5, "annotation class"

    const-string v6, "ANNOTATION_CLASS"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, LJb/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, LJb/g;->ANNOTATION_CLASS:LJb/g;

    new-instance v5, LJb/g;

    const-string v6, "object"

    const-string v7, "OBJECT"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, LJb/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, LJb/g;->OBJECT:LJb/g;

    filled-new-array/range {v0 .. v5}, [LJb/g;

    move-result-object v0

    sput-object v0, LJb/g;->$VALUES:[LJb/g;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LJb/g;->$ENTRIES:Llb/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, LJb/g;->codeRepresentation:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LJb/g;
    .locals 1

    const-class v0, LJb/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJb/g;

    return-object p0
.end method

.method public static values()[LJb/g;
    .locals 1

    sget-object v0, LJb/g;->$VALUES:[LJb/g;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJb/g;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-object v0, LJb/g;->OBJECT:LJb/g;

    if-eq p0, v0, :cond_1

    sget-object v0, LJb/g;->ENUM_ENTRY:LJb/g;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
