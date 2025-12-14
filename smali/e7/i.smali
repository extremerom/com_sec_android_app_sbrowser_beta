.class public abstract enum Le7/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Le7/i;

.field public static final enum EQ:Le7/i;

.field public static final enum GE:Le7/i;

.field public static final enum GT:Le7/i;

.field public static final enum LE:Le7/i;

.field public static final enum LT:Le7/i;

.field public static final enum NE:Le7/i;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Le7/c;

    invoke-direct {v0}, Le7/c;-><init>()V

    sput-object v0, Le7/i;->LT:Le7/i;

    new-instance v1, Le7/d;

    invoke-direct {v1}, Le7/d;-><init>()V

    sput-object v1, Le7/i;->LE:Le7/i;

    new-instance v2, Le7/e;

    invoke-direct {v2}, Le7/e;-><init>()V

    sput-object v2, Le7/i;->EQ:Le7/i;

    new-instance v3, Le7/f;

    invoke-direct {v3}, Le7/f;-><init>()V

    sput-object v3, Le7/i;->GE:Le7/i;

    new-instance v4, Le7/g;

    invoke-direct {v4}, Le7/g;-><init>()V

    sput-object v4, Le7/i;->GT:Le7/i;

    new-instance v5, Le7/h;

    invoke-direct {v5}, Le7/h;-><init>()V

    sput-object v5, Le7/i;->NE:Le7/i;

    const/4 v6, 0x6

    new-array v6, v6, [Le7/i;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    sput-object v6, Le7/i;->$VALUES:[Le7/i;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le7/i;
    .locals 1

    const-class v0, Le7/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le7/i;

    return-object p0
.end method

.method public static values()[Le7/i;
    .locals 1

    sget-object v0, Le7/i;->$VALUES:[Le7/i;

    invoke-virtual {v0}, [Le7/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le7/i;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lm7/b;)Lk7/n;
.end method
