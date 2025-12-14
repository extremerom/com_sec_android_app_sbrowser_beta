.class public final enum LZb/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LZb/e;

.field public static final enum MUTABLE:LZb/e;

.field public static final enum READ_ONLY:LZb/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LZb/e;

    const-string v1, "READ_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LZb/e;->READ_ONLY:LZb/e;

    new-instance v1, LZb/e;

    const-string v2, "MUTABLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LZb/e;->MUTABLE:LZb/e;

    filled-new-array {v0, v1}, [LZb/e;

    move-result-object v0

    sput-object v0, LZb/e;->$VALUES:[LZb/e;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LZb/e;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LZb/e;
    .locals 1

    const-class v0, LZb/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LZb/e;

    return-object p0
.end method

.method public static values()[LZb/e;
    .locals 1

    sget-object v0, LZb/e;->$VALUES:[LZb/e;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LZb/e;

    return-object v0
.end method
