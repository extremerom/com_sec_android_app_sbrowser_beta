.class public abstract LR1/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final contentDescription:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final leadingContentData:LR1/q;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mainText:LR1/y;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onClick:Ly1/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final subText:LR1/y;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LR1/y;LR1/y;LR1/p;Ljava/lang/String;Ly1/a;)V
    .locals 1

    if-eqz p3, :cond_0

    new-instance v0, LR1/q;

    invoke-direct {v0, p3}, LR1/q;-><init>(LR1/p;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LR1/r;->leadingContentData:LR1/q;

    iput-object p1, p0, LR1/r;->mainText:LR1/y;

    iput-object p2, p0, LR1/r;->subText:LR1/y;

    iput-object p4, p0, LR1/r;->contentDescription:Ljava/lang/String;

    iput-object p5, p0, LR1/r;->onClick:Ly1/a;

    return-void
.end method


# virtual methods
.method public final getContentDescription()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, LR1/r;->contentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public final getLeadingContentData()LR1/q;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, LR1/r;->leadingContentData:LR1/q;

    return-object p0
.end method

.method public final getMainText()LR1/y;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, LR1/r;->mainText:LR1/y;

    return-object p0
.end method

.method public final getOnClick()Ly1/a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, LR1/r;->onClick:Ly1/a;

    return-object p0
.end method

.method public final getSubText()LR1/y;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, LR1/r;->subText:LR1/y;

    return-object p0
.end method
