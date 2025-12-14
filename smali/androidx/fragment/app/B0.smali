.class public final enum Landroidx/fragment/app/B0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Landroidx/fragment/app/B0;

.field public static final Companion:Landroidx/fragment/app/A0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum Horizontal:Landroidx/fragment/app/B0;

.field public static final enum HorizontalForRTL:Landroidx/fragment/app/B0;


# instance fields
.field private final enter:I

.field private final exit:I

.field private final popEnter:I

.field private final popExit:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/fragment/app/B0;

    const-string v1, "Horizontal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/fragment/app/B0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/fragment/app/B0;->Horizontal:Landroidx/fragment/app/B0;

    new-instance v1, Landroidx/fragment/app/B0;

    const-string v2, "HorizontalForRTL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/fragment/app/B0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/fragment/app/B0;->HorizontalForRTL:Landroidx/fragment/app/B0;

    filled-new-array {v0, v1}, [Landroidx/fragment/app/B0;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/B0;->$VALUES:[Landroidx/fragment/app/B0;

    new-instance v0, Landroidx/fragment/app/A0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/fragment/app/B0;->Companion:Landroidx/fragment/app/A0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const p1, 0x7f020042

    iput p1, p0, Landroidx/fragment/app/B0;->enter:I

    const p1, 0x7f020043

    iput p1, p0, Landroidx/fragment/app/B0;->exit:I

    const p1, 0x7f020040

    iput p1, p0, Landroidx/fragment/app/B0;->popEnter:I

    const p1, 0x7f020041

    iput p1, p0, Landroidx/fragment/app/B0;->popExit:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/fragment/app/B0;
    .locals 1

    const-class v0, Landroidx/fragment/app/B0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/B0;

    return-object p0
.end method

.method public static values()[Landroidx/fragment/app/B0;
    .locals 1

    sget-object v0, Landroidx/fragment/app/B0;->$VALUES:[Landroidx/fragment/app/B0;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/fragment/app/B0;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Landroidx/fragment/app/B0;->enter:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Landroidx/fragment/app/B0;->exit:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Landroidx/fragment/app/B0;->popEnter:I

    return p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Landroidx/fragment/app/B0;->popExit:I

    return p0
.end method
