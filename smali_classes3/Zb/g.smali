.class public final enum LZb/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LZb/g;

.field public static final enum FORCE_FLEXIBILITY:LZb/g;

.field public static final enum NOT_NULL:LZb/g;

.field public static final enum NULLABLE:LZb/g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LZb/g;

    const-string v1, "FORCE_FLEXIBILITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LZb/g;->FORCE_FLEXIBILITY:LZb/g;

    new-instance v1, LZb/g;

    const-string v2, "NULLABLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LZb/g;->NULLABLE:LZb/g;

    new-instance v2, LZb/g;

    const-string v3, "NOT_NULL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LZb/g;->NOT_NULL:LZb/g;

    filled-new-array {v0, v1, v2}, [LZb/g;

    move-result-object v0

    sput-object v0, LZb/g;->$VALUES:[LZb/g;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LZb/g;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LZb/g;
    .locals 1

    const-class v0, LZb/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LZb/g;

    return-object p0
.end method

.method public static values()[LZb/g;
    .locals 1

    sget-object v0, LZb/g;->$VALUES:[LZb/g;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LZb/g;

    return-object v0
.end method
