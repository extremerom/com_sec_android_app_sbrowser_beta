.class public final Landroidx/emoji2/text/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lz7/d;


# instance fields
.field public final a:Landroidx/emoji2/text/g;

.field public b:I

.field public final c:Landroidx/emoji2/text/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz7/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/emoji2/text/n;->d:Lz7/d;

    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/n;->b:I

    new-instance v0, Landroidx/emoji2/text/b;

    invoke-direct {v0}, Landroidx/emoji2/text/b;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/n;->c:Landroidx/emoji2/text/b;

    iput-object p1, p0, Landroidx/emoji2/text/n;->a:Landroidx/emoji2/text/g;

    return-void
.end method
