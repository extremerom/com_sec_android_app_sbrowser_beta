.class public final enum LJd/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LJd/a;

.field public static final enum ALWAYS:LJd/a;

.field public static final enum NON_DEFAULT:LJd/a;

.field public static final enum NON_EMPTY:LJd/a;

.field public static final enum NON_NULL:LJd/a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LJd/a;

    const-string v1, "ALWAYS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJd/a;->ALWAYS:LJd/a;

    new-instance v1, LJd/a;

    const-string v2, "NON_NULL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LJd/a;->NON_NULL:LJd/a;

    new-instance v2, LJd/a;

    const-string v3, "NON_DEFAULT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LJd/a;->NON_DEFAULT:LJd/a;

    new-instance v3, LJd/a;

    const-string v4, "NON_EMPTY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LJd/a;->NON_EMPTY:LJd/a;

    filled-new-array {v0, v1, v2, v3}, [LJd/a;

    move-result-object v0

    sput-object v0, LJd/a;->$VALUES:[LJd/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LJd/a;
    .locals 1

    const-class v0, LJd/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJd/a;

    return-object p0
.end method

.method public static values()[LJd/a;
    .locals 1

    sget-object v0, LJd/a;->$VALUES:[LJd/a;

    invoke-virtual {v0}, [LJd/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJd/a;

    return-object v0
.end method
