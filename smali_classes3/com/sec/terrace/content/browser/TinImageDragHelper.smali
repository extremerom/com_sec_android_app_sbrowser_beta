.class public Lcom/sec/terrace/content/browser/TinImageDragHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sTinImageDragHelper:Lcom/sec/terrace/content/browser/TinImageDragHelper;


# instance fields
.field private mImageDragSourceHTML:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/terrace/content/browser/TinImageDragHelper;

    invoke-direct {v0}, Lcom/sec/terrace/content/browser/TinImageDragHelper;-><init>()V

    sput-object v0, Lcom/sec/terrace/content/browser/TinImageDragHelper;->sTinImageDragHelper:Lcom/sec/terrace/content/browser/TinImageDragHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/terrace/content/browser/TinImageDragHelper;
    .locals 1

    sget-object v0, Lcom/sec/terrace/content/browser/TinImageDragHelper;->sTinImageDragHelper:Lcom/sec/terrace/content/browser/TinImageDragHelper;

    return-object v0
.end method


# virtual methods
.method public getImageDragSourceHTML()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinImageDragHelper;->mImageDragSourceHTML:Ljava/lang/String;

    return-object p0
.end method

.method public setImageDragSourceHTML(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinImageDragHelper;->mImageDragSourceHTML:Ljava/lang/String;

    return-void
.end method
