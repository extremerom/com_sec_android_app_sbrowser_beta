.class public Lcom/sec/android/app/sbrowser/common/stub/StubRequest;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/stub/StubRequest$GetExtListListener;,
        Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/sec/android/app/sbrowser/common/stub/StubData;",
        ">;"
    }
.end annotation


# instance fields
.field private mGetExtListListener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$GetExtListListener;

.field private mListener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;

.field private mType:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->mGetExtListListener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$GetExtListListener;

    return-void
.end method

.method private getXmlParserFromInputStream(Ljava/io/InputStream;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    new-instance v0, Ljava/io/StringReader;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    return-object p1
.end method

.method private handleAppInfoCaseForSIX(Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 0

    const-string p0, "appId"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->setAppID(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "versionCode"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->setVersionCode(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "versionName"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->setVersionName(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "productId"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->setProductID(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p0, "productName"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->setProductName(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p0, "iconImgURL"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->setIconImgURL(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string p0, "currencyUnit"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->setCurrencyUnit(Ljava/lang/String;)V

    return-void

    :cond_6
    const-string p0, "price"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->setPrice(Ljava/lang/String;)V

    return-void

    :cond_7
    const-string p0, "discountPrice"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->setDiscountPrice(Ljava/lang/String;)V

    return-void

    :cond_8
    const-string p0, "discountFlag"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->setDiscountFlag(Ljava/lang/String;)V

    return-void

    :cond_9
    const-string p0, "realContentSize"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->setRealContentSize(Ljava/lang/String;)V

    return-void

    :cond_a
    const-string p0, "sellerName"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->setSellerName(Ljava/lang/String;)V

    return-void

    :cond_b
    const-string p0, "categoryName"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->setCategoryName(Ljava/lang/String;)V

    return-void

    :cond_c
    const-string p0, "averageRating"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->setAverageRating(Ljava/lang/String;)V

    return-void

    :cond_d
    const-string p0, "description"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->setDescription(Ljava/lang/String;)V

    return-void

    :cond_e
    const-string p0, "shortDescription"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->setShortDescription(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method private handleEndTag(Lorg/xmlpull/v1/XmlPullParser;ZLjava/util/ArrayList;Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;",
            ">;",
            "Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "appInfo"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    :cond_0
    return p2
.end method

.method private handleNonAppInfoCase(Lcom/sec/android/app/sbrowser/common/stub/StubData;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 0

    const-string p0, "appId"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->setAppId(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "versionCode"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->setVersionCode(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "versionName"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->setVersionName(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "productId"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->setProductId(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p0, "productName"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->setProductName(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private handleStartTag(Lcom/sec/android/app/sbrowser/common/stub/StubData;Lorg/xmlpull/v1/XmlPullParser;ZLcom/sec/android/app/sbrowser/common/stub/StubExtInfo;)Z
    .locals 3

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appInfo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p3, 0x1

    goto/16 :goto_0

    :cond_0
    const-string v1, "resultCode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "StubRequest"

    if-eqz v1, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->setResultCode(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "resultCode: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    const-string v1, "resultMsg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->setResultMsg(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "resultMsg: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    const-string v1, "contentSize"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->setContentSize(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "downloadURI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->setDownloadURI(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "signature"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->setSignature(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v1, "startNum"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->setStartNum(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v1, "endNum"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->setEndNum(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v1, "isEndOfList"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->setIsEndOfList(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    if-eqz p3, :cond_9

    invoke-direct {p0, p4, p2, v0}, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->handleAppInfoCaseForSIX(Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->handleNonAppInfoCase(Lcom/sec/android/app/sbrowser/common/stub/StubData;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :goto_0
    return p3
.end method

.method private isDownloadAvailable(Lcom/sec/android/app/sbrowser/common/stub/StubData;)Z
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/common/stub/StubData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "1"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->getResultCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isError(Lcom/sec/android/app/sbrowser/common/stub/StubData;)Z
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/common/stub/StubData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->getResultCode()Ljava/lang/String;

    move-result-object p0

    const-string p1, "0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "2"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "-1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isGetExtListSuccess(Lcom/sec/android/app/sbrowser/common/stub/StubData;)Z
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/common/stub/StubData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "0"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->getResultCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isNoMatchingApplication(Lcom/sec/android/app/sbrowser/common/stub/StubData;)Z
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/common/stub/StubData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "0"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->getResultCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isUpdateAvailable(Lcom/sec/android/app/sbrowser/common/stub/StubData;)Z
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/common/stub/StubData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "2"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->getResultCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isUpdateNotNecessary(Lcom/sec/android/app/sbrowser/common/stub/StubData;)Z
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/common/stub/StubData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->getResultCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "-1"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->getResultCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private setStubDataFromParser(Lcom/sec/android/app/sbrowser/common/stub/StubData;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    const/4 v5, 0x1

    if-eq v1, v5, :cond_3

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    invoke-direct {p0, p1, p2, v2, v4}, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->handleStartTag(Lcom/sec/android/app/sbrowser/common/stub/StubData;Lorg/xmlpull/v1/XmlPullParser;ZLcom/sec/android/app/sbrowser/common/stub/StubExtInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v4, :cond_0

    new-instance v4, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;

    invoke-direct {v4}, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;-><init>()V

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    const/4 v5, 0x3

    if-ne v1, v5, :cond_2

    invoke-direct {p0, p2, v2, v0, v4}, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->handleEndTag(Lorg/xmlpull/v1/XmlPullParser;ZLjava/util/ArrayList;Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    move v2, v1

    move-object v4, v3

    :cond_2
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_4

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->setExtList(Ljava/util/ArrayList;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/stub/StubData;
    .locals 10

    const-string v0, "Exception: "

    const-string v1, " != 200"

    const-string v2, "status code "

    const-string v3, "doInBackground requestUrl: "

    const-string v4, "doInBackground start"

    const-string v5, "StubRequest"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/sec/android/app/sbrowser/common/stub/StubData;

    invoke-direct {v4}, Lcom/sec/android/app/sbrowser/common/stub/StubData;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    aget-object p1, p1, v6

    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, v6}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/16 v3, 0x1388

    invoke-virtual {p1, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v3, 0x2710

    invoke-virtual {p1, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v6, 0xc8

    if-ne v6, v3, :cond_0

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->getXmlParserFromInputStream(Ljava/io/InputStream;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->setStubDataFromParser(Lcom/sec/android/app/sbrowser/common/stub/StubData;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    const-string p0, "doInBackground end"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :catchall_0
    move-exception p0

    move-object v7, p1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_2
    new-instance p0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    move-object p1, v7

    :goto_0
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object v7

    :goto_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->doInBackground([Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/stub/StubData;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->mGetExtListListener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$GetExtListListener;

    const-string v1, "StubRequest"

    if-nez v0, :cond_0

    const-string v0, "onPostExecute - GetExtListListener is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->mType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->isGetExtListSuccess(Lcom/sec/android/app/sbrowser/common/stub/StubData;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->mGetExtListListener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$GetExtListListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/stub/StubRequest$GetExtListListener;->onGetExtListSuccess(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->mGetExtListListener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$GetExtListListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/stub/StubRequest$GetExtListListener;->onGetExtListFail(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->mListener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;

    if-nez v0, :cond_3

    const-string p0, "onPostExecute - StubListener is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string v0, "onPostExecute start"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->mType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    if-eqz p1, :cond_7

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->isError(Lcom/sec/android/app/sbrowser/common/stub/StubData;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->isNoMatchingApplication(Lcom/sec/android/app/sbrowser/common/stub/StubData;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->mListener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;->onNoMatchingApplication(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->isUpdateNotNecessary(Lcom/sec/android/app/sbrowser/common/stub/StubData;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->mListener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;->onUpdateNotNecessary(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V

    goto :goto_2

    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->isUpdateAvailable(Lcom/sec/android/app/sbrowser/common/stub/StubData;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->mListener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;->onUpdateAvailable(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V

    goto :goto_2

    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->mListener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;->onUpdateCheckFail(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V

    goto :goto_2

    :cond_8
    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    if-eqz p1, :cond_9

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->isDownloadAvailable(Lcom/sec/android/app/sbrowser/common/stub/StubData;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->mListener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;->onGetDownloadUrlSuccess(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V

    goto :goto_2

    :cond_9
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->mListener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;->onGetDownloadUrlFail(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V

    :cond_a
    :goto_2
    const-string p0, "onPostExecute end"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/stub/StubData;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->onPostExecute(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V

    return-void
.end method

.method public run()V
    .locals 3

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    const-string v2, "StubRequest"

    if-ne v0, v1, :cond_0

    const-string p0, "the task is already running."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->mUrl:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "IllegalStateException occurs"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    const-string v0, "run - RejectedExecutionException occurs"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->mGetExtListListener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$GetExtListListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/stub/StubRequest$GetExtListListener;->onGetExtListFail(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->mListener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;

    if-nez v0, :cond_2

    const-string p0, "RejectedExecutionException - StubListener is null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v0, "RejectedExecutionException occurs"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->mListener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;->onUpdateCheckFail(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V

    :goto_0
    return-void
.end method

.method public setGetExtListListener(Lcom/sec/android/app/sbrowser/common/stub/StubRequest$GetExtListListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->mGetExtListListener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$GetExtListListener;

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->mListener:Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->mType:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubRequest;->mUrl:Ljava/lang/String;

    return-void
.end method
