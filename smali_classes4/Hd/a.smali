.class public final enum LHd/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LHd/a;

.field public static final enum ANY:LHd/a;

.field public static final enum DEFAULT:LHd/a;

.field public static final enum NONE:LHd/a;

.field public static final enum NON_PRIVATE:LHd/a;

.field public static final enum PROTECTED_AND_PUBLIC:LHd/a;

.field public static final enum PUBLIC_ONLY:LHd/a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LHd/a;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHd/a;->ANY:LHd/a;

    new-instance v1, LHd/a;

    const-string v2, "NON_PRIVATE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LHd/a;->NON_PRIVATE:LHd/a;

    new-instance v2, LHd/a;

    const-string v3, "PROTECTED_AND_PUBLIC"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LHd/a;->PROTECTED_AND_PUBLIC:LHd/a;

    new-instance v3, LHd/a;

    const-string v4, "PUBLIC_ONLY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LHd/a;->PUBLIC_ONLY:LHd/a;

    new-instance v4, LHd/a;

    const-string v5, "NONE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, LHd/a;->NONE:LHd/a;

    new-instance v5, LHd/a;

    const-string v6, "DEFAULT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, LHd/a;->DEFAULT:LHd/a;

    filled-new-array/range {v0 .. v5}, [LHd/a;

    move-result-object v0

    sput-object v0, LHd/a;->$VALUES:[LHd/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LHd/a;
    .locals 1

    const-class v0, LHd/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LHd/a;

    return-object p0
.end method

.method public static values()[LHd/a;
    .locals 1

    sget-object v0, LHd/a;->$VALUES:[LHd/a;

    invoke-virtual {v0}, [LHd/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LHd/a;

    return-object v0
.end method
