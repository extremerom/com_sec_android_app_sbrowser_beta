.class public final enum Lq0/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lq0/e;

.field public static final enum Active:Lq0/e;

.field public static final enum ActiveParent:Lq0/e;

.field public static final enum Captured:Lq0/e;

.field public static final enum Inactive:Lq0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lq0/e;

    const-string v1, "Active"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq0/e;->Active:Lq0/e;

    new-instance v1, Lq0/e;

    const-string v2, "ActiveParent"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lq0/e;->ActiveParent:Lq0/e;

    new-instance v2, Lq0/e;

    const-string v3, "Captured"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lq0/e;->Captured:Lq0/e;

    new-instance v3, Lq0/e;

    const-string v4, "Inactive"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lq0/e;->Inactive:Lq0/e;

    filled-new-array {v0, v1, v2, v3}, [Lq0/e;

    move-result-object v0

    sput-object v0, Lq0/e;->$VALUES:[Lq0/e;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq0/e;
    .locals 1

    const-class v0, Lq0/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq0/e;

    return-object p0
.end method

.method public static values()[Lq0/e;
    .locals 1

    sget-object v0, Lq0/e;->$VALUES:[Lq0/e;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq0/e;

    return-object v0
.end method
