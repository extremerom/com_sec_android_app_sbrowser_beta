.class public final enum Lk9/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lk9/n;

.field public static final enum LUMINANCE:Lk9/n;

.field public static final enum LUMINANCE_LONG:Lk9/n;

.field public static final enum NONE:Lk9/n;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lk9/n;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk9/n;->NONE:Lk9/n;

    new-instance v1, Lk9/n;

    const-string v2, "LUMINANCE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lk9/n;->LUMINANCE:Lk9/n;

    new-instance v2, Lk9/n;

    const-string v3, "LUMINANCE_LONG"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lk9/n;->LUMINANCE_LONG:Lk9/n;

    filled-new-array {v0, v1, v2}, [Lk9/n;

    move-result-object v0

    sput-object v0, Lk9/n;->$VALUES:[Lk9/n;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lk9/n;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lk9/n;
    .locals 1

    const-class v0, Lk9/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk9/n;

    return-object p0
.end method

.method public static values()[Lk9/n;
    .locals 1

    sget-object v0, Lk9/n;->$VALUES:[Lk9/n;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk9/n;

    return-object v0
.end method
