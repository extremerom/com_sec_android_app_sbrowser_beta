.class public final enum Lg9/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lg9/b;

.field public static final enum HIGH:Lg9/b;

.field public static final enum LOW:Lg9/b;

.field public static final enum NORMAL:Lg9/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lg9/b;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg9/b;->LOW:Lg9/b;

    new-instance v1, Lg9/b;

    const-string v2, "NORMAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg9/b;->NORMAL:Lg9/b;

    new-instance v2, Lg9/b;

    const-string v3, "HIGH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg9/b;->HIGH:Lg9/b;

    filled-new-array {v0, v1, v2}, [Lg9/b;

    move-result-object v0

    sput-object v0, Lg9/b;->$VALUES:[Lg9/b;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lg9/b;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg9/b;
    .locals 1

    const-class v0, Lg9/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg9/b;

    return-object p0
.end method

.method public static values()[Lg9/b;
    .locals 1

    sget-object v0, Lg9/b;->$VALUES:[Lg9/b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg9/b;

    return-object v0
.end method
