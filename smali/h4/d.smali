.class public final enum Lh4/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lh4/d;

.field public static final enum CLEARED:Lh4/d;

.field public static final enum FAILED:Lh4/d;

.field public static final enum PAUSED:Lh4/d;

.field public static final enum RUNNING:Lh4/d;

.field public static final enum SUCCESS:Lh4/d;


# instance fields
.field private final isComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lh4/d;

    const-string v1, "RUNNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lh4/d;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lh4/d;->RUNNING:Lh4/d;

    new-instance v1, Lh4/d;

    const-string v3, "PAUSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lh4/d;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lh4/d;->PAUSED:Lh4/d;

    new-instance v3, Lh4/d;

    const-string v5, "CLEARED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lh4/d;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lh4/d;->CLEARED:Lh4/d;

    new-instance v2, Lh4/d;

    const-string v5, "SUCCESS"

    const/4 v6, 0x3

    invoke-direct {v2, v5, v6, v4}, Lh4/d;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lh4/d;->SUCCESS:Lh4/d;

    new-instance v5, Lh4/d;

    const-string v6, "FAILED"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v4}, Lh4/d;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lh4/d;->FAILED:Lh4/d;

    filled-new-array {v0, v1, v3, v2, v5}, [Lh4/d;

    move-result-object v0

    sput-object v0, Lh4/d;->$VALUES:[Lh4/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lh4/d;->isComplete:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lh4/d;
    .locals 1

    const-class v0, Lh4/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lh4/d;

    return-object p0
.end method

.method public static values()[Lh4/d;
    .locals 1

    sget-object v0, Lh4/d;->$VALUES:[Lh4/d;

    invoke-virtual {v0}, [Lh4/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh4/d;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lh4/d;->isComplete:Z

    return p0
.end method
