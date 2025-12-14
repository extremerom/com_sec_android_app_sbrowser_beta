.class public final enum LRd/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LRd/o;

.field public static final enum CONTINUE:LRd/o;

.field public static final enum REMOVE:LRd/o;

.field public static final enum SKIP_CHILDREN:LRd/o;

.field public static final enum SKIP_ENTIRELY:LRd/o;

.field public static final enum STOP:LRd/o;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LRd/o;

    const-string v1, "CONTINUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LRd/o;->CONTINUE:LRd/o;

    new-instance v1, LRd/o;

    const-string v2, "SKIP_CHILDREN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LRd/o;->SKIP_CHILDREN:LRd/o;

    new-instance v2, LRd/o;

    const-string v3, "SKIP_ENTIRELY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LRd/o;->SKIP_ENTIRELY:LRd/o;

    new-instance v3, LRd/o;

    const-string v4, "REMOVE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LRd/o;->REMOVE:LRd/o;

    new-instance v4, LRd/o;

    const-string v5, "STOP"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, LRd/o;->STOP:LRd/o;

    filled-new-array {v0, v1, v2, v3, v4}, [LRd/o;

    move-result-object v0

    sput-object v0, LRd/o;->$VALUES:[LRd/o;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LRd/o;
    .locals 1

    const-class v0, LRd/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LRd/o;

    return-object p0
.end method

.method public static values()[LRd/o;
    .locals 1

    sget-object v0, LRd/o;->$VALUES:[LRd/o;

    invoke-virtual {v0}, [LRd/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LRd/o;

    return-object v0
.end method
