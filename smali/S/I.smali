.class public final enum LS/I;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LS/I;

.field public static final enum Horizontal:LS/I;

.field public static final enum Vertical:LS/I;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LS/I;

    const-string v1, "Vertical"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LS/I;->Vertical:LS/I;

    new-instance v1, LS/I;

    const-string v2, "Horizontal"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LS/I;->Horizontal:LS/I;

    filled-new-array {v0, v1}, [LS/I;

    move-result-object v0

    sput-object v0, LS/I;->$VALUES:[LS/I;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LS/I;
    .locals 1

    const-class v0, LS/I;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LS/I;

    return-object p0
.end method

.method public static values()[LS/I;
    .locals 1

    sget-object v0, LS/I;->$VALUES:[LS/I;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LS/I;

    return-object v0
.end method
