.class public Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mActiveMatchOrdinal:I

.field private final mFinalUpdate:Z

.field private final mNumberOfMatches:I

.field private final mRendererSelectionRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(ILandroid/graphics/Rect;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;->mNumberOfMatches:I

    iput-object p2, p0, Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;->mRendererSelectionRect:Landroid/graphics/Rect;

    iput p3, p0, Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;->mActiveMatchOrdinal:I

    iput-boolean p4, p0, Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;->mFinalUpdate:Z

    return-void
.end method


# virtual methods
.method public getActiveMatchOrdinal()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;->mActiveMatchOrdinal:I

    return p0
.end method

.method public getNumberOfMatches()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;->mNumberOfMatches:I

    return p0
.end method

.method public isFinalUpdate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;->mFinalUpdate:Z

    return p0
.end method
