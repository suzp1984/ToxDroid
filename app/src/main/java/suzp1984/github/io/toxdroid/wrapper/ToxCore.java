package suzp1984.github.io.toxdroid.wrapper;

import im.tox.core.network.Port;
import im.tox.tox4j.core.callbacks.ToxCoreEventListener;
import im.tox.tox4j.core.data.ToxPublicKey;
import im.tox.tox4j.core.data.ToxSecretKey;
import im.tox.tox4j.core.options.ToxOptions;
import im.tox.tox4j.impl.jni.ToxCoreImpl;

/**
 * Created by jacobsu on 5/30/16.
 */
public class ToxCore {
    private ToxCoreImpl mToxCoreImpl;

    public ToxCore(ToxOptions options) {
        mToxCoreImpl = new ToxCoreImpl(options);
    }

    public void close() {
        mToxCoreImpl.close();
    }

    public Object getSaveData() {
        return mToxCoreImpl.getSavedata();
    }

    public void bootstrap(String address, Port port, ToxPublicKey publicKey) {
        //mToxCoreImpl.bootstrap(address, port, publicKey);
        //mToxCoreImpl.addTcpRelay(address, port, publicKey);
    }

//    public Port getUdpPort() {
//        return mToxCoreImpl.getUdpPort();
//    }
//
//    public Port getTcpPort() {
//        return mToxCoreImpl.getTcpPort();
//    }
//
//    public ToxPublicKey getDhtId() {
//        return mToxCoreImpl.getDhtId();
//    }
//
//    public Integer getIterationInterval() {
//        return (Integer) mToxCoreImpl.iterationInterval();
//    }
//
//    public void iterate(ToxCoreEventListener<Object> listener) {
//        mToxCoreImpl.iterate(listener, null);
//    }
//
//    public String getSelfKey() {
//        return (String) mToxCoreImpl.getPublicKey().toHexString();
//    }
//
//    public ToxSecretKey getSecreKey() {
//        return mToxCoreImpl.getSecretKey();
//    }
//
//    public void setNoSpam(Integer noSpam) {
//        mToxCoreImpl.setNospam(noSpam);
//    }
//
//    public Integer getNoSpam() {
//        return (Integer) mToxCoreImpl.getNospam();
//    }
}
