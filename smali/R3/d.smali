.class public final LR3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LR3/c;

.field public final b:LT3/f;

.field public final c:Landroid/content/ContentResolver;

.field public final d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;LR3/c;LT3/f;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LR3/d;->a:LR3/c;

    iput-object p3, p0, LR3/d;->b:LT3/f;

    iput-object p4, p0, LR3/d;->c:Landroid/content/ContentResolver;

    iput-object p1, p0, LR3/d;->d:Ljava/util/ArrayList;

    return-void
.end method
