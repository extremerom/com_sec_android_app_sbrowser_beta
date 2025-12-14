.class public final enum Landroidx/recyclerview/widget/V0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Landroidx/recyclerview/widget/V0;

.field public static final enum DOWN:Landroidx/recyclerview/widget/V0;

.field public static final enum LEFT:Landroidx/recyclerview/widget/V0;

.field public static final enum RIGHT:Landroidx/recyclerview/widget/V0;

.field public static final enum UP:Landroidx/recyclerview/widget/V0;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/recyclerview/widget/V0;

    const-string v1, "UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/recyclerview/widget/V0;->UP:Landroidx/recyclerview/widget/V0;

    new-instance v1, Landroidx/recyclerview/widget/V0;

    const-string v2, "RIGHT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/recyclerview/widget/V0;->RIGHT:Landroidx/recyclerview/widget/V0;

    new-instance v2, Landroidx/recyclerview/widget/V0;

    const-string v3, "DOWN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/recyclerview/widget/V0;->DOWN:Landroidx/recyclerview/widget/V0;

    new-instance v3, Landroidx/recyclerview/widget/V0;

    const-string v4, "LEFT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/recyclerview/widget/V0;->LEFT:Landroidx/recyclerview/widget/V0;

    filled-new-array {v0, v1, v2, v3}, [Landroidx/recyclerview/widget/V0;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/V0;->$VALUES:[Landroidx/recyclerview/widget/V0;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/recyclerview/widget/V0;
    .locals 1

    const-class v0, Landroidx/recyclerview/widget/V0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/V0;

    return-object p0
.end method

.method public static values()[Landroidx/recyclerview/widget/V0;
    .locals 1

    sget-object v0, Landroidx/recyclerview/widget/V0;->$VALUES:[Landroidx/recyclerview/widget/V0;

    invoke-virtual {v0}, [Landroidx/recyclerview/widget/V0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/recyclerview/widget/V0;

    return-object v0
.end method
