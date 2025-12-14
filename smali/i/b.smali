.class public final enum Li/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Li/b;

.field public static final enum ERROR:Li/b;

.field public static final enum WARNING:Li/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Li/b;

    const-string v1, "WARNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li/b;->WARNING:Li/b;

    new-instance v1, Li/b;

    const-string v2, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Li/b;->ERROR:Li/b;

    filled-new-array {v0, v1}, [Li/b;

    move-result-object v0

    sput-object v0, Li/b;->$VALUES:[Li/b;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Li/b;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Li/b;
    .locals 1

    const-class v0, Li/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li/b;

    return-object p0
.end method

.method public static values()[Li/b;
    .locals 1

    sget-object v0, Li/b;->$VALUES:[Li/b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/b;

    return-object v0
.end method
