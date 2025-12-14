.class public Lcom/sec/terrace/browser/ui/TerracePopupBlockedInfoBarDelegate;
.super Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;
.source "SourceFile"


# instance fields
.field private mCanShowPopups:Z

.field private mPopupsNum:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(JILjava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;-><init>(IJ)V

    iput p3, p0, Lcom/sec/terrace/browser/ui/TerracePopupBlockedInfoBarDelegate;->mPopupsNum:I

    iput-boolean p5, p0, Lcom/sec/terrace/browser/ui/TerracePopupBlockedInfoBarDelegate;->mCanShowPopups:Z

    iput-object p4, p0, Lcom/sec/terrace/browser/ui/TerracePopupBlockedInfoBarDelegate;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public static create(JILjava/lang/String;Z)Lcom/sec/terrace/browser/ui/TerracePopupBlockedInfoBarDelegate;
    .locals 7
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v6, Lcom/sec/terrace/browser/ui/TerracePopupBlockedInfoBarDelegate;

    move-object v0, v6

    move-wide v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/terrace/browser/ui/TerracePopupBlockedInfoBarDelegate;-><init>(JILjava/lang/String;Z)V

    return-object v6
.end method


# virtual methods
.method public getCanShowPopups()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/ui/TerracePopupBlockedInfoBarDelegate;->mCanShowPopups:Z

    return p0
.end method
