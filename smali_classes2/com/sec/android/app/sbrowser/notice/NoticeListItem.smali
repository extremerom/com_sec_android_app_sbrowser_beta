.class public Lcom/sec/android/app/sbrowser/notice/NoticeListItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mDate:Ljava/lang/String;

.field private final mId:I

.field private final mText:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/notice/NoticeListItem;->mId:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/notice/NoticeListItem;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/notice/NoticeListItem;->mDate:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/notice/NoticeListItem;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/notice/NoticeListItem;->mDate:Ljava/lang/String;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/notice/NoticeListItem;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/notice/NoticeListItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method
