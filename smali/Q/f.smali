.class public final enum LQ/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LQ/f;

.field public static final enum BoundReached:LQ/f;

.field public static final enum Finished:LQ/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LQ/f;

    const-string v1, "BoundReached"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQ/f;->BoundReached:LQ/f;

    new-instance v1, LQ/f;

    const-string v2, "Finished"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LQ/f;->Finished:LQ/f;

    filled-new-array {v0, v1}, [LQ/f;

    move-result-object v0

    sput-object v0, LQ/f;->$VALUES:[LQ/f;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LQ/f;
    .locals 1

    const-class v0, LQ/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LQ/f;

    return-object p0
.end method

.method public static values()[LQ/f;
    .locals 1

    sget-object v0, LQ/f;->$VALUES:[LQ/f;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LQ/f;

    return-object v0
.end method
