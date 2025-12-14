.class public final enum Lorg/chromium/components/policy/PolicyCache$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/policy/PolicyCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/chromium/components/policy/PolicyCache$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/components/policy/PolicyCache$Type;

.field public static final enum Boolean:Lorg/chromium/components/policy/PolicyCache$Type;

.field public static final enum Dict:Lorg/chromium/components/policy/PolicyCache$Type;

.field public static final enum Integer:Lorg/chromium/components/policy/PolicyCache$Type;

.field public static final enum List:Lorg/chromium/components/policy/PolicyCache$Type;

.field public static final enum String:Lorg/chromium/components/policy/PolicyCache$Type;


# direct methods
.method private static synthetic $values()[Lorg/chromium/components/policy/PolicyCache$Type;
    .locals 5

    sget-object v0, Lorg/chromium/components/policy/PolicyCache$Type;->Integer:Lorg/chromium/components/policy/PolicyCache$Type;

    sget-object v1, Lorg/chromium/components/policy/PolicyCache$Type;->Boolean:Lorg/chromium/components/policy/PolicyCache$Type;

    sget-object v2, Lorg/chromium/components/policy/PolicyCache$Type;->String:Lorg/chromium/components/policy/PolicyCache$Type;

    sget-object v3, Lorg/chromium/components/policy/PolicyCache$Type;->List:Lorg/chromium/components/policy/PolicyCache$Type;

    sget-object v4, Lorg/chromium/components/policy/PolicyCache$Type;->Dict:Lorg/chromium/components/policy/PolicyCache$Type;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/chromium/components/policy/PolicyCache$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/components/policy/PolicyCache$Type;

    const-string v1, "Integer"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/components/policy/PolicyCache$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/components/policy/PolicyCache$Type;->Integer:Lorg/chromium/components/policy/PolicyCache$Type;

    new-instance v0, Lorg/chromium/components/policy/PolicyCache$Type;

    const-string v1, "Boolean"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/chromium/components/policy/PolicyCache$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/components/policy/PolicyCache$Type;->Boolean:Lorg/chromium/components/policy/PolicyCache$Type;

    new-instance v0, Lorg/chromium/components/policy/PolicyCache$Type;

    const-string v1, "String"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/chromium/components/policy/PolicyCache$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/components/policy/PolicyCache$Type;->String:Lorg/chromium/components/policy/PolicyCache$Type;

    new-instance v0, Lorg/chromium/components/policy/PolicyCache$Type;

    const-string v1, "List"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/chromium/components/policy/PolicyCache$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/components/policy/PolicyCache$Type;->List:Lorg/chromium/components/policy/PolicyCache$Type;

    new-instance v0, Lorg/chromium/components/policy/PolicyCache$Type;

    const-string v1, "Dict"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/chromium/components/policy/PolicyCache$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/components/policy/PolicyCache$Type;->Dict:Lorg/chromium/components/policy/PolicyCache$Type;

    invoke-static {}, Lorg/chromium/components/policy/PolicyCache$Type;->$values()[Lorg/chromium/components/policy/PolicyCache$Type;

    move-result-object v0

    sput-object v0, Lorg/chromium/components/policy/PolicyCache$Type;->$VALUES:[Lorg/chromium/components/policy/PolicyCache$Type;

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

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/components/policy/PolicyCache$Type;
    .locals 1

    const-class v0, Lorg/chromium/components/policy/PolicyCache$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/chromium/components/policy/PolicyCache$Type;

    return-object p0
.end method

.method public static values()[Lorg/chromium/components/policy/PolicyCache$Type;
    .locals 1

    sget-object v0, Lorg/chromium/components/policy/PolicyCache$Type;->$VALUES:[Lorg/chromium/components/policy/PolicyCache$Type;

    invoke-virtual {v0}, [Lorg/chromium/components/policy/PolicyCache$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/components/policy/PolicyCache$Type;

    return-object v0
.end method
